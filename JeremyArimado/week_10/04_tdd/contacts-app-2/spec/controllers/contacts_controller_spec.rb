require 'rails_helper'

RSpec.describe ContactsController, type: :controller do
    describe "GET #index" do
        context "with params[:letter]" do
            it "populates an array of relev users in @contacts" do
                johns = create :contact, last_name: "Johns"
                jones = create :contact, last_name: "Jones"
                smith = create :contact, last_name: "Smith"
                get :index, letter: 'J'
                expect(assigns(:contacts)).to eq([johns, jones])
            end
            it "renders the contacts/index template" do
                get :index
                expect(response).to render_template(:index)
            end
        end
        context "without params[:letter]" do
            it "assigns all contacts to @contacts" do
                contact = create :contact
                contact_two = create :contact
                get :index
                expect(assigns(:contacts)).to match_array([contact, contact_two])
            end
            it "renders the contacts/index template" do
                get :index
                expect(response).to render_template(:index)
            end
        end
    end
    describe "GET #show" do
        it "assigns the requested contact to @contact" do
            contact = create :contact
            get :show, id: contact.id
            expect(assigns(:contact) ).to eq(contact)
        end
        it "renders the show template" do
            contact = create :contact
            get :show, id: contact.id
            expect(response).to render_template(:show)
        end
    end
    describe "GET #new" do
        it "create a new contact, saved as @contact" do
            get :new
            expect(assigns(:contact)).to be_a_new(Contact)
        end
        it "renders the contacts/new template" do
            get :new
            expect(response).to render_template(:new)
        end
    end
    describe "POST #create" do
        context "with valid attributes" do
            it "saves the new contact in the database" do
                expect {
                    post :create, contact: attributes_for(:contact)
                }.to change(Contact, :count).by 1
            end
            it "redirects to contacts#show" do
                post :create, contact: attributes_for(:contact)
                expect(response).to redirect_to contact_path(assigns(:contact))
            end
        end
        context "with invalid attributes" do
            it "shouldnt save to db" do
                expect {
                    post :create, contact: attributes_for(:contact, first_name: nil)
                }.to change(Contact, :count).by 0
            end
            it "should re-render the contacts/new template" do
                post :create, contact: attributes_for(:contact, first_name: nil)
                expect(response).to render_template(:new)
            end
        end
    end
    describe "GET #edit" do

    end
    # describe "PUT #update" do
    #     before :each do
    #          @contact = create :contact, first_name: "Groucho", last_name: "Marx"
    #          # After the put request, run @contact.reload
    #     end
    #     context "with valid attributes" do
    #          it "locates the correct contact" do
    #              put :update, id: @contact.id
    #              expect(assigns(:contact)).to eq(@contact)
    #          end
    #          it "change @contact's attributes" do
    #              put :update, id: @contact_id, contact: attributes_for(:contact, first_name: Gummo);
    #          end
    #          it "redirects to @contact's show page"
    #     end
    #     context "with invalid attributes" do
    #          it "locates the correct contact"
    #          it "not change @contact's attributes"
    #          it "re-render the edit template"
    #     end
    # end

    describe "DELETE #destroy" do
        before :each do
            delete :destroy, contact:
        end
    end

end
