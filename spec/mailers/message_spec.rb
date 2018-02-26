require "rails_helper"

RSpec.describe MessageMailer, type: :mailer do
  describe "contact_me" do
    let(:mail) { MessageMailer.contact_me }

    it "renders the headers" do
      expect(mail.subject).to eq("Contact me")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
