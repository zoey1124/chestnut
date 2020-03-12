# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto_kandan_lg.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("proto_kandan_lg.proto", :syntax => :proto3) do
    add_message "kandan_lg.PUser" do
      optional :id, :uint32, 1
      optional :email, :string, 2
      optional :encrypted_password, :string, 3
      optional :reset_password_token, :string, 4
      optional :reset_password_sent_at, :uint32, 5
      optional :remember_created_at, :uint32, 6
      optional :first_name, :string, 7
      optional :last_name, :string, 8
      optional :signin_count, :uint32, 9
      optional :current_sign_in_at, :uint32, 10
      optional :current_sign_in_ip, :string, 11
      optional :last_sign_in_at, :uint32, 12
      optional :last_sign_in_ip, :string, 13
      optional :auth_token, :string, 14
      optional :locale, :string, 15
      optional :gravatar_hash, :string, 16
      optional :username, :string, 17
      optional :regstatus, :string, 18
      optional :active, :bool, 19
      optional :is_admin, :bool, 20
      optional :avatar_url, :string, 21
      optional :created_at, :uint32, 22
      optional :updated_at, :uint32, 23
      repeated :channels, :message, 24, "kandan_lg.PUser.PChannelsInUser"
      repeated :activities, :message, 25, "kandan_lg.PUser.PActivitiesInUser"
      repeated :attachments, :message, 26, "kandan_lg.PUser.PAttachmentsInUser"
    end
    add_message "kandan_lg.PUser.PChannelsInUser" do
      optional :id, :uint32, 1
      optional :name, :string, 2
      optional :created_at, :uint32, 3
      optional :updated_at, :uint32, 4
      optional :user_id, :uint32, 5
      optional :count, :uint32, 6
      repeated :activities, :message, 7, "kandan_lg.PUser.PChannelsInUser.PActivitiesInChannel"
      repeated :attachments, :message, 8, "kandan_lg.PUser.PChannelsInUser.PAttachmentsInChannel"
    end
    add_message "kandan_lg.PUser.PChannelsInUser.PActivitiesInChannel" do
      optional :id, :uint32, 1
      optional :created_at, :uint32, 2
      optional :updated_at, :uint32, 3
      optional :action, :string, 4
      optional :content, :string, 5
      optional :channel_id, :uint32, 6
      optional :user_id, :uint32, 7
    end
    add_message "kandan_lg.PUser.PChannelsInUser.PAttachmentsInChannel" do
      optional :id, :uint32, 1
      optional :file_file_name, :string, 2
      optional :file_content_type, :string, 3
      optional :file_file_size, :uint32, 4
      optional :message_id, :uint32, 5
      optional :file_updated_at, :uint32, 6
      optional :created_at, :uint32, 7
      optional :updated_at, :uint32, 8
      optional :user_id, :uint32, 9
      optional :channel_id, :uint32, 10
    end
    add_message "kandan_lg.PUser.PActivitiesInUser" do
      optional :id, :uint32, 1
      optional :created_at, :uint32, 2
      optional :updated_at, :uint32, 3
      optional :action, :string, 4
      optional :content, :string, 5
      optional :channel_id, :uint32, 6
      optional :user_id, :uint32, 7
      optional :channel, :message, 8, "kandan_lg.PUser.PActivitiesInUser.PChannelInActivity"
    end
    add_message "kandan_lg.PUser.PActivitiesInUser.PChannelInActivity" do
      optional :id, :uint32, 1
      optional :name, :string, 2
      optional :created_at, :uint32, 3
      optional :updated_at, :uint32, 4
      optional :user_id, :uint32, 5
      optional :count, :uint32, 6
      repeated :attachments, :message, 7, "kandan_lg.PUser.PActivitiesInUser.PChannelInActivity.PAttachmentsInChannel"
    end
    add_message "kandan_lg.PUser.PActivitiesInUser.PChannelInActivity.PAttachmentsInChannel" do
      optional :id, :uint32, 1
      optional :file_file_name, :string, 2
      optional :file_content_type, :string, 3
      optional :file_file_size, :uint32, 4
      optional :message_id, :uint32, 5
      optional :file_updated_at, :uint32, 6
      optional :created_at, :uint32, 7
      optional :updated_at, :uint32, 8
      optional :user_id, :uint32, 9
      optional :channel_id, :uint32, 10
    end
    add_message "kandan_lg.PUser.PAttachmentsInUser" do
      optional :id, :uint32, 1
      optional :file_file_name, :string, 2
      optional :file_content_type, :string, 3
      optional :file_file_size, :uint32, 4
      optional :message_id, :uint32, 5
      optional :file_updated_at, :uint32, 6
      optional :created_at, :uint32, 7
      optional :updated_at, :uint32, 8
      optional :user_id, :uint32, 9
      optional :channel_id, :uint32, 10
      optional :channel, :message, 11, "kandan_lg.PUser.PAttachmentsInUser.PChannelInAttachment"
    end
    add_message "kandan_lg.PUser.PAttachmentsInUser.PChannelInAttachment" do
      optional :id, :uint32, 1
      optional :name, :string, 2
      optional :created_at, :uint32, 3
      optional :updated_at, :uint32, 4
      optional :user_id, :uint32, 5
      optional :count, :uint32, 6
      repeated :activities, :message, 7, "kandan_lg.PUser.PAttachmentsInUser.PChannelInAttachment.PActivitiesInChannel"
    end
    add_message "kandan_lg.PUser.PAttachmentsInUser.PChannelInAttachment.PActivitiesInChannel" do
      optional :id, :uint32, 1
      optional :created_at, :uint32, 2
      optional :updated_at, :uint32, 3
      optional :action, :string, 4
      optional :content, :string, 5
      optional :channel_id, :uint32, 6
      optional :user_id, :uint32, 7
    end
    add_message "kandan_lg.PChannel" do
      optional :id, :uint32, 1
      optional :name, :string, 2
      optional :created_at, :uint32, 3
      optional :updated_at, :uint32, 4
      optional :user_id, :uint32, 5
      optional :count, :uint32, 6
      repeated :activities, :message, 7, "kandan_lg.PChannel.PActivitiesInChannel"
      optional :user, :message, 8, "kandan_lg.PChannel.PUserInChannel"
      repeated :attachments, :message, 9, "kandan_lg.PChannel.PAttachmentsInChannel"
    end
    add_message "kandan_lg.PChannel.PActivitiesInChannel" do
      optional :id, :uint32, 1
      optional :created_at, :uint32, 2
      optional :updated_at, :uint32, 3
      optional :action, :string, 4
      optional :content, :string, 5
      optional :channel_id, :uint32, 6
      optional :user_id, :uint32, 7
      optional :user, :message, 8, "kandan_lg.PChannel.PActivitiesInChannel.PUserInActivity"
    end
    add_message "kandan_lg.PChannel.PActivitiesInChannel.PUserInActivity" do
      optional :id, :uint32, 1
      optional :email, :string, 2
      optional :encrypted_password, :string, 3
      optional :reset_password_token, :string, 4
      optional :reset_password_sent_at, :uint32, 5
      optional :remember_created_at, :uint32, 6
      optional :first_name, :string, 7
      optional :last_name, :string, 8
      optional :signin_count, :uint32, 9
      optional :current_sign_in_at, :uint32, 10
      optional :current_sign_in_ip, :string, 11
      optional :last_sign_in_at, :uint32, 12
      optional :last_sign_in_ip, :string, 13
      optional :auth_token, :string, 14
      optional :locale, :string, 15
      optional :gravatar_hash, :string, 16
      optional :username, :string, 17
      optional :regstatus, :string, 18
      optional :active, :bool, 19
      optional :is_admin, :bool, 20
      optional :avatar_url, :string, 21
      optional :created_at, :uint32, 22
      optional :updated_at, :uint32, 23
      repeated :attachments, :message, 24, "kandan_lg.PChannel.PActivitiesInChannel.PUserInActivity.PAttachmentsInUser"
    end
    add_message "kandan_lg.PChannel.PActivitiesInChannel.PUserInActivity.PAttachmentsInUser" do
      optional :id, :uint32, 1
      optional :file_file_name, :string, 2
      optional :file_content_type, :string, 3
      optional :file_file_size, :uint32, 4
      optional :message_id, :uint32, 5
      optional :file_updated_at, :uint32, 6
      optional :created_at, :uint32, 7
      optional :updated_at, :uint32, 8
      optional :user_id, :uint32, 9
      optional :channel_id, :uint32, 10
    end
    add_message "kandan_lg.PChannel.PUserInChannel" do
      optional :id, :uint32, 1
      optional :email, :string, 2
      optional :encrypted_password, :string, 3
      optional :reset_password_token, :string, 4
      optional :reset_password_sent_at, :uint32, 5
      optional :remember_created_at, :uint32, 6
      optional :first_name, :string, 7
      optional :last_name, :string, 8
      optional :signin_count, :uint32, 9
      optional :current_sign_in_at, :uint32, 10
      optional :current_sign_in_ip, :string, 11
      optional :last_sign_in_at, :uint32, 12
      optional :last_sign_in_ip, :string, 13
      optional :auth_token, :string, 14
      optional :locale, :string, 15
      optional :gravatar_hash, :string, 16
      optional :username, :string, 17
      optional :regstatus, :string, 18
      optional :active, :bool, 19
      optional :is_admin, :bool, 20
      optional :avatar_url, :string, 21
      optional :created_at, :uint32, 22
      optional :updated_at, :uint32, 23
      repeated :activities, :message, 24, "kandan_lg.PChannel.PUserInChannel.PActivitiesInUser"
      repeated :attachments, :message, 25, "kandan_lg.PChannel.PUserInChannel.PAttachmentsInUser"
    end
    add_message "kandan_lg.PChannel.PUserInChannel.PActivitiesInUser" do
      optional :id, :uint32, 1
      optional :created_at, :uint32, 2
      optional :updated_at, :uint32, 3
      optional :action, :string, 4
      optional :content, :string, 5
      optional :channel_id, :uint32, 6
      optional :user_id, :uint32, 7
    end
    add_message "kandan_lg.PChannel.PUserInChannel.PAttachmentsInUser" do
      optional :id, :uint32, 1
      optional :file_file_name, :string, 2
      optional :file_content_type, :string, 3
      optional :file_file_size, :uint32, 4
      optional :message_id, :uint32, 5
      optional :file_updated_at, :uint32, 6
      optional :created_at, :uint32, 7
      optional :updated_at, :uint32, 8
      optional :user_id, :uint32, 9
      optional :channel_id, :uint32, 10
    end
    add_message "kandan_lg.PChannel.PAttachmentsInChannel" do
      optional :id, :uint32, 1
      optional :file_file_name, :string, 2
      optional :file_content_type, :string, 3
      optional :file_file_size, :uint32, 4
      optional :message_id, :uint32, 5
      optional :file_updated_at, :uint32, 6
      optional :created_at, :uint32, 7
      optional :updated_at, :uint32, 8
      optional :user_id, :uint32, 9
      optional :channel_id, :uint32, 10
      optional :user, :message, 11, "kandan_lg.PChannel.PAttachmentsInChannel.PUserInAttachment"
    end
    add_message "kandan_lg.PChannel.PAttachmentsInChannel.PUserInAttachment" do
      optional :id, :uint32, 1
      optional :email, :string, 2
      optional :encrypted_password, :string, 3
      optional :reset_password_token, :string, 4
      optional :reset_password_sent_at, :uint32, 5
      optional :remember_created_at, :uint32, 6
      optional :first_name, :string, 7
      optional :last_name, :string, 8
      optional :signin_count, :uint32, 9
      optional :current_sign_in_at, :uint32, 10
      optional :current_sign_in_ip, :string, 11
      optional :last_sign_in_at, :uint32, 12
      optional :last_sign_in_ip, :string, 13
      optional :auth_token, :string, 14
      optional :locale, :string, 15
      optional :gravatar_hash, :string, 16
      optional :username, :string, 17
      optional :regstatus, :string, 18
      optional :active, :bool, 19
      optional :is_admin, :bool, 20
      optional :avatar_url, :string, 21
      optional :created_at, :uint32, 22
      optional :updated_at, :uint32, 23
      repeated :activities, :message, 24, "kandan_lg.PChannel.PAttachmentsInChannel.PUserInAttachment.PActivitiesInUser"
    end
    add_message "kandan_lg.PChannel.PAttachmentsInChannel.PUserInAttachment.PActivitiesInUser" do
      optional :id, :uint32, 1
      optional :created_at, :uint32, 2
      optional :updated_at, :uint32, 3
      optional :action, :string, 4
      optional :content, :string, 5
      optional :channel_id, :uint32, 6
      optional :user_id, :uint32, 7
    end
    add_message "kandan_lg.PActivity" do
      optional :id, :uint32, 1
      optional :created_at, :uint32, 2
      optional :updated_at, :uint32, 3
      optional :action, :string, 4
      optional :content, :string, 5
      optional :channel_id, :uint32, 6
      optional :user_id, :uint32, 7
      optional :channel, :message, 8, "kandan_lg.PActivity.PChannelInActivity"
      optional :user, :message, 9, "kandan_lg.PActivity.PUserInActivity"
    end
    add_message "kandan_lg.PActivity.PChannelInActivity" do
      optional :id, :uint32, 1
      optional :name, :string, 2
      optional :created_at, :uint32, 3
      optional :updated_at, :uint32, 4
      optional :user_id, :uint32, 5
      optional :count, :uint32, 6
      optional :user, :message, 7, "kandan_lg.PActivity.PChannelInActivity.PUserInChannel"
      repeated :attachments, :message, 8, "kandan_lg.PActivity.PChannelInActivity.PAttachmentsInChannel"
    end
    add_message "kandan_lg.PActivity.PChannelInActivity.PUserInChannel" do
      optional :id, :uint32, 1
      optional :email, :string, 2
      optional :encrypted_password, :string, 3
      optional :reset_password_token, :string, 4
      optional :reset_password_sent_at, :uint32, 5
      optional :remember_created_at, :uint32, 6
      optional :first_name, :string, 7
      optional :last_name, :string, 8
      optional :signin_count, :uint32, 9
      optional :current_sign_in_at, :uint32, 10
      optional :current_sign_in_ip, :string, 11
      optional :last_sign_in_at, :uint32, 12
      optional :last_sign_in_ip, :string, 13
      optional :auth_token, :string, 14
      optional :locale, :string, 15
      optional :gravatar_hash, :string, 16
      optional :username, :string, 17
      optional :regstatus, :string, 18
      optional :active, :bool, 19
      optional :is_admin, :bool, 20
      optional :avatar_url, :string, 21
      optional :created_at, :uint32, 22
      optional :updated_at, :uint32, 23
      repeated :attachments, :message, 24, "kandan_lg.PActivity.PChannelInActivity.PUserInChannel.PAttachmentsInUser"
    end
    add_message "kandan_lg.PActivity.PChannelInActivity.PUserInChannel.PAttachmentsInUser" do
      optional :id, :uint32, 1
      optional :file_file_name, :string, 2
      optional :file_content_type, :string, 3
      optional :file_file_size, :uint32, 4
      optional :message_id, :uint32, 5
      optional :file_updated_at, :uint32, 6
      optional :created_at, :uint32, 7
      optional :updated_at, :uint32, 8
      optional :user_id, :uint32, 9
      optional :channel_id, :uint32, 10
    end
    add_message "kandan_lg.PActivity.PChannelInActivity.PAttachmentsInChannel" do
      optional :id, :uint32, 1
      optional :file_file_name, :string, 2
      optional :file_content_type, :string, 3
      optional :file_file_size, :uint32, 4
      optional :message_id, :uint32, 5
      optional :file_updated_at, :uint32, 6
      optional :created_at, :uint32, 7
      optional :updated_at, :uint32, 8
      optional :user_id, :uint32, 9
      optional :channel_id, :uint32, 10
      optional :user, :message, 11, "kandan_lg.PActivity.PChannelInActivity.PAttachmentsInChannel.PUserInAttachment"
    end
    add_message "kandan_lg.PActivity.PChannelInActivity.PAttachmentsInChannel.PUserInAttachment" do
      optional :id, :uint32, 1
      optional :email, :string, 2
      optional :encrypted_password, :string, 3
      optional :reset_password_token, :string, 4
      optional :reset_password_sent_at, :uint32, 5
      optional :remember_created_at, :uint32, 6
      optional :first_name, :string, 7
      optional :last_name, :string, 8
      optional :signin_count, :uint32, 9
      optional :current_sign_in_at, :uint32, 10
      optional :current_sign_in_ip, :string, 11
      optional :last_sign_in_at, :uint32, 12
      optional :last_sign_in_ip, :string, 13
      optional :auth_token, :string, 14
      optional :locale, :string, 15
      optional :gravatar_hash, :string, 16
      optional :username, :string, 17
      optional :regstatus, :string, 18
      optional :active, :bool, 19
      optional :is_admin, :bool, 20
      optional :avatar_url, :string, 21
      optional :created_at, :uint32, 22
      optional :updated_at, :uint32, 23
    end
    add_message "kandan_lg.PActivity.PUserInActivity" do
      optional :id, :uint32, 1
      optional :email, :string, 2
      optional :encrypted_password, :string, 3
      optional :reset_password_token, :string, 4
      optional :reset_password_sent_at, :uint32, 5
      optional :remember_created_at, :uint32, 6
      optional :first_name, :string, 7
      optional :last_name, :string, 8
      optional :signin_count, :uint32, 9
      optional :current_sign_in_at, :uint32, 10
      optional :current_sign_in_ip, :string, 11
      optional :last_sign_in_at, :uint32, 12
      optional :last_sign_in_ip, :string, 13
      optional :auth_token, :string, 14
      optional :locale, :string, 15
      optional :gravatar_hash, :string, 16
      optional :username, :string, 17
      optional :regstatus, :string, 18
      optional :active, :bool, 19
      optional :is_admin, :bool, 20
      optional :avatar_url, :string, 21
      optional :created_at, :uint32, 22
      optional :updated_at, :uint32, 23
      repeated :channels, :message, 24, "kandan_lg.PActivity.PUserInActivity.PChannelsInUser"
      repeated :attachments, :message, 25, "kandan_lg.PActivity.PUserInActivity.PAttachmentsInUser"
    end
    add_message "kandan_lg.PActivity.PUserInActivity.PChannelsInUser" do
      optional :id, :uint32, 1
      optional :name, :string, 2
      optional :created_at, :uint32, 3
      optional :updated_at, :uint32, 4
      optional :user_id, :uint32, 5
      optional :count, :uint32, 6
      repeated :attachments, :message, 7, "kandan_lg.PActivity.PUserInActivity.PChannelsInUser.PAttachmentsInChannel"
    end
    add_message "kandan_lg.PActivity.PUserInActivity.PChannelsInUser.PAttachmentsInChannel" do
      optional :id, :uint32, 1
      optional :file_file_name, :string, 2
      optional :file_content_type, :string, 3
      optional :file_file_size, :uint32, 4
      optional :message_id, :uint32, 5
      optional :file_updated_at, :uint32, 6
      optional :created_at, :uint32, 7
      optional :updated_at, :uint32, 8
      optional :user_id, :uint32, 9
      optional :channel_id, :uint32, 10
    end
    add_message "kandan_lg.PActivity.PUserInActivity.PAttachmentsInUser" do
      optional :id, :uint32, 1
      optional :file_file_name, :string, 2
      optional :file_content_type, :string, 3
      optional :file_file_size, :uint32, 4
      optional :message_id, :uint32, 5
      optional :file_updated_at, :uint32, 6
      optional :created_at, :uint32, 7
      optional :updated_at, :uint32, 8
      optional :user_id, :uint32, 9
      optional :channel_id, :uint32, 10
      optional :channel, :message, 11, "kandan_lg.PActivity.PUserInActivity.PAttachmentsInUser.PChannelInAttachment"
    end
    add_message "kandan_lg.PActivity.PUserInActivity.PAttachmentsInUser.PChannelInAttachment" do
      optional :id, :uint32, 1
      optional :name, :string, 2
      optional :created_at, :uint32, 3
      optional :updated_at, :uint32, 4
      optional :user_id, :uint32, 5
      optional :count, :uint32, 6
    end
    add_message "kandan_lg.PAttachment" do
      optional :id, :uint32, 1
      optional :file_file_name, :string, 2
      optional :file_content_type, :string, 3
      optional :file_file_size, :uint32, 4
      optional :message_id, :uint32, 5
      optional :file_updated_at, :uint32, 6
      optional :created_at, :uint32, 7
      optional :updated_at, :uint32, 8
      optional :user_id, :uint32, 9
      optional :channel_id, :uint32, 10
      optional :user, :message, 11, "kandan_lg.PAttachment.PUserInAttachment"
      optional :channel, :message, 12, "kandan_lg.PAttachment.PChannelInAttachment"
    end
    add_message "kandan_lg.PAttachment.PUserInAttachment" do
      optional :id, :uint32, 1
      optional :email, :string, 2
      optional :encrypted_password, :string, 3
      optional :reset_password_token, :string, 4
      optional :reset_password_sent_at, :uint32, 5
      optional :remember_created_at, :uint32, 6
      optional :first_name, :string, 7
      optional :last_name, :string, 8
      optional :signin_count, :uint32, 9
      optional :current_sign_in_at, :uint32, 10
      optional :current_sign_in_ip, :string, 11
      optional :last_sign_in_at, :uint32, 12
      optional :last_sign_in_ip, :string, 13
      optional :auth_token, :string, 14
      optional :locale, :string, 15
      optional :gravatar_hash, :string, 16
      optional :username, :string, 17
      optional :regstatus, :string, 18
      optional :active, :bool, 19
      optional :is_admin, :bool, 20
      optional :avatar_url, :string, 21
      optional :created_at, :uint32, 22
      optional :updated_at, :uint32, 23
      repeated :channels, :message, 24, "kandan_lg.PAttachment.PUserInAttachment.PChannelsInUser"
      repeated :activities, :message, 25, "kandan_lg.PAttachment.PUserInAttachment.PActivitiesInUser"
    end
    add_message "kandan_lg.PAttachment.PUserInAttachment.PChannelsInUser" do
      optional :id, :uint32, 1
      optional :name, :string, 2
      optional :created_at, :uint32, 3
      optional :updated_at, :uint32, 4
      optional :user_id, :uint32, 5
      optional :count, :uint32, 6
      repeated :activities, :message, 7, "kandan_lg.PAttachment.PUserInAttachment.PChannelsInUser.PActivitiesInChannel"
    end
    add_message "kandan_lg.PAttachment.PUserInAttachment.PChannelsInUser.PActivitiesInChannel" do
      optional :id, :uint32, 1
      optional :created_at, :uint32, 2
      optional :updated_at, :uint32, 3
      optional :action, :string, 4
      optional :content, :string, 5
      optional :channel_id, :uint32, 6
      optional :user_id, :uint32, 7
    end
    add_message "kandan_lg.PAttachment.PUserInAttachment.PActivitiesInUser" do
      optional :id, :uint32, 1
      optional :created_at, :uint32, 2
      optional :updated_at, :uint32, 3
      optional :action, :string, 4
      optional :content, :string, 5
      optional :channel_id, :uint32, 6
      optional :user_id, :uint32, 7
      optional :channel, :message, 8, "kandan_lg.PAttachment.PUserInAttachment.PActivitiesInUser.PChannelInActivity"
    end
    add_message "kandan_lg.PAttachment.PUserInAttachment.PActivitiesInUser.PChannelInActivity" do
      optional :id, :uint32, 1
      optional :name, :string, 2
      optional :created_at, :uint32, 3
      optional :updated_at, :uint32, 4
      optional :user_id, :uint32, 5
      optional :count, :uint32, 6
    end
    add_message "kandan_lg.PAttachment.PChannelInAttachment" do
      optional :id, :uint32, 1
      optional :name, :string, 2
      optional :created_at, :uint32, 3
      optional :updated_at, :uint32, 4
      optional :user_id, :uint32, 5
      optional :count, :uint32, 6
      repeated :activities, :message, 7, "kandan_lg.PAttachment.PChannelInAttachment.PActivitiesInChannel"
      optional :user, :message, 8, "kandan_lg.PAttachment.PChannelInAttachment.PUserInChannel"
    end
    add_message "kandan_lg.PAttachment.PChannelInAttachment.PActivitiesInChannel" do
      optional :id, :uint32, 1
      optional :created_at, :uint32, 2
      optional :updated_at, :uint32, 3
      optional :action, :string, 4
      optional :content, :string, 5
      optional :channel_id, :uint32, 6
      optional :user_id, :uint32, 7
      optional :user, :message, 8, "kandan_lg.PAttachment.PChannelInAttachment.PActivitiesInChannel.PUserInActivity"
    end
    add_message "kandan_lg.PAttachment.PChannelInAttachment.PActivitiesInChannel.PUserInActivity" do
      optional :id, :uint32, 1
      optional :email, :string, 2
      optional :encrypted_password, :string, 3
      optional :reset_password_token, :string, 4
      optional :reset_password_sent_at, :uint32, 5
      optional :remember_created_at, :uint32, 6
      optional :first_name, :string, 7
      optional :last_name, :string, 8
      optional :signin_count, :uint32, 9
      optional :current_sign_in_at, :uint32, 10
      optional :current_sign_in_ip, :string, 11
      optional :last_sign_in_at, :uint32, 12
      optional :last_sign_in_ip, :string, 13
      optional :auth_token, :string, 14
      optional :locale, :string, 15
      optional :gravatar_hash, :string, 16
      optional :username, :string, 17
      optional :regstatus, :string, 18
      optional :active, :bool, 19
      optional :is_admin, :bool, 20
      optional :avatar_url, :string, 21
      optional :created_at, :uint32, 22
      optional :updated_at, :uint32, 23
    end
    add_message "kandan_lg.PAttachment.PChannelInAttachment.PUserInChannel" do
      optional :id, :uint32, 1
      optional :email, :string, 2
      optional :encrypted_password, :string, 3
      optional :reset_password_token, :string, 4
      optional :reset_password_sent_at, :uint32, 5
      optional :remember_created_at, :uint32, 6
      optional :first_name, :string, 7
      optional :last_name, :string, 8
      optional :signin_count, :uint32, 9
      optional :current_sign_in_at, :uint32, 10
      optional :current_sign_in_ip, :string, 11
      optional :last_sign_in_at, :uint32, 12
      optional :last_sign_in_ip, :string, 13
      optional :auth_token, :string, 14
      optional :locale, :string, 15
      optional :gravatar_hash, :string, 16
      optional :username, :string, 17
      optional :regstatus, :string, 18
      optional :active, :bool, 19
      optional :is_admin, :bool, 20
      optional :avatar_url, :string, 21
      optional :created_at, :uint32, 22
      optional :updated_at, :uint32, 23
      repeated :activities, :message, 24, "kandan_lg.PAttachment.PChannelInAttachment.PUserInChannel.PActivitiesInUser"
    end
    add_message "kandan_lg.PAttachment.PChannelInAttachment.PUserInChannel.PActivitiesInUser" do
      optional :id, :uint32, 1
      optional :created_at, :uint32, 2
      optional :updated_at, :uint32, 3
      optional :action, :string, 4
      optional :content, :string, 5
      optional :channel_id, :uint32, 6
      optional :user_id, :uint32, 7
    end
    add_message "kandan_lg.PQuery0Result" do
      repeated :user, :message, 1, "kandan_lg.PUser"
    end
    add_message "kandan_lg.PUserList" do
      repeated :user, :message, 1, "kandan_lg.PUser"
    end
    add_message "kandan_lg.PChannelList" do
      repeated :channel, :message, 1, "kandan_lg.PChannel"
    end
    add_message "kandan_lg.PActivityList" do
      repeated :activity, :message, 1, "kandan_lg.PActivity"
    end
    add_message "kandan_lg.PAttachmentList" do
      repeated :attachment, :message, 1, "kandan_lg.PAttachment"
    end
    add_message "kandan_lg.QueryParam" do
      optional :query_id, :uint32, 1
      optional :q_0_param_0_uid, :uint32, 2
    end
  end
end

module KandanLg
  PUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PUser").msgclass
  PUser::PChannelsInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PUser.PChannelsInUser").msgclass
  PUser::PChannelsInUser::PActivitiesInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PUser.PChannelsInUser.PActivitiesInChannel").msgclass
  PUser::PChannelsInUser::PAttachmentsInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PUser.PChannelsInUser.PAttachmentsInChannel").msgclass
  PUser::PActivitiesInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PUser.PActivitiesInUser").msgclass
  PUser::PActivitiesInUser::PChannelInActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PUser.PActivitiesInUser.PChannelInActivity").msgclass
  PUser::PActivitiesInUser::PChannelInActivity::PAttachmentsInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PUser.PActivitiesInUser.PChannelInActivity.PAttachmentsInChannel").msgclass
  PUser::PAttachmentsInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PUser.PAttachmentsInUser").msgclass
  PUser::PAttachmentsInUser::PChannelInAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PUser.PAttachmentsInUser.PChannelInAttachment").msgclass
  PUser::PAttachmentsInUser::PChannelInAttachment::PActivitiesInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PUser.PAttachmentsInUser.PChannelInAttachment.PActivitiesInChannel").msgclass
  PChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PChannel").msgclass
  PChannel::PActivitiesInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PChannel.PActivitiesInChannel").msgclass
  PChannel::PActivitiesInChannel::PUserInActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PChannel.PActivitiesInChannel.PUserInActivity").msgclass
  PChannel::PActivitiesInChannel::PUserInActivity::PAttachmentsInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PChannel.PActivitiesInChannel.PUserInActivity.PAttachmentsInUser").msgclass
  PChannel::PUserInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PChannel.PUserInChannel").msgclass
  PChannel::PUserInChannel::PActivitiesInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PChannel.PUserInChannel.PActivitiesInUser").msgclass
  PChannel::PUserInChannel::PAttachmentsInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PChannel.PUserInChannel.PAttachmentsInUser").msgclass
  PChannel::PAttachmentsInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PChannel.PAttachmentsInChannel").msgclass
  PChannel::PAttachmentsInChannel::PUserInAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PChannel.PAttachmentsInChannel.PUserInAttachment").msgclass
  PChannel::PAttachmentsInChannel::PUserInAttachment::PActivitiesInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PChannel.PAttachmentsInChannel.PUserInAttachment.PActivitiesInUser").msgclass
  PActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivity").msgclass
  PActivity::PChannelInActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivity.PChannelInActivity").msgclass
  PActivity::PChannelInActivity::PUserInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivity.PChannelInActivity.PUserInChannel").msgclass
  PActivity::PChannelInActivity::PUserInChannel::PAttachmentsInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivity.PChannelInActivity.PUserInChannel.PAttachmentsInUser").msgclass
  PActivity::PChannelInActivity::PAttachmentsInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivity.PChannelInActivity.PAttachmentsInChannel").msgclass
  PActivity::PChannelInActivity::PAttachmentsInChannel::PUserInAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivity.PChannelInActivity.PAttachmentsInChannel.PUserInAttachment").msgclass
  PActivity::PUserInActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivity.PUserInActivity").msgclass
  PActivity::PUserInActivity::PChannelsInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivity.PUserInActivity.PChannelsInUser").msgclass
  PActivity::PUserInActivity::PChannelsInUser::PAttachmentsInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivity.PUserInActivity.PChannelsInUser.PAttachmentsInChannel").msgclass
  PActivity::PUserInActivity::PAttachmentsInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivity.PUserInActivity.PAttachmentsInUser").msgclass
  PActivity::PUserInActivity::PAttachmentsInUser::PChannelInAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivity.PUserInActivity.PAttachmentsInUser.PChannelInAttachment").msgclass
  PAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachment").msgclass
  PAttachment::PUserInAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachment.PUserInAttachment").msgclass
  PAttachment::PUserInAttachment::PChannelsInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachment.PUserInAttachment.PChannelsInUser").msgclass
  PAttachment::PUserInAttachment::PChannelsInUser::PActivitiesInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachment.PUserInAttachment.PChannelsInUser.PActivitiesInChannel").msgclass
  PAttachment::PUserInAttachment::PActivitiesInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachment.PUserInAttachment.PActivitiesInUser").msgclass
  PAttachment::PUserInAttachment::PActivitiesInUser::PChannelInActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachment.PUserInAttachment.PActivitiesInUser.PChannelInActivity").msgclass
  PAttachment::PChannelInAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachment.PChannelInAttachment").msgclass
  PAttachment::PChannelInAttachment::PActivitiesInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachment.PChannelInAttachment.PActivitiesInChannel").msgclass
  PAttachment::PChannelInAttachment::PActivitiesInChannel::PUserInActivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachment.PChannelInAttachment.PActivitiesInChannel.PUserInActivity").msgclass
  PAttachment::PChannelInAttachment::PUserInChannel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachment.PChannelInAttachment.PUserInChannel").msgclass
  PAttachment::PChannelInAttachment::PUserInChannel::PActivitiesInUser = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachment.PChannelInAttachment.PUserInChannel.PActivitiesInUser").msgclass
  PQuery0Result = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PQuery0Result").msgclass
  PUserList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PUserList").msgclass
  PChannelList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PChannelList").msgclass
  PActivityList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PActivityList").msgclass
  PAttachmentList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.PAttachmentList").msgclass
  QueryParam = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("kandan_lg.QueryParam").msgclass
end
