class WashingtonPost
  def get_stories
    {title: get_titel}
  end
end

class Pinterest
  def get_stories
  end
end


task 'get_all_stories' do
  WashingtonPost.get_stories.each do |story|
    Content.new(story)
  end
end



<% if story.thumbail? %>
  <%= image_tag story.thumbnail %>
<% else 5>
  <%= image_tag 'placehodler.jpg' %>
<% end %>