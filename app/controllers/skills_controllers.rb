# class SkillsController

# end

get "/whatever" do
  @skill = Skill.new(params[:skill])
  if @skill.save
    redirect_to "skills/#{@skill.id}"
  else
    erb :form, locals: { errors: @skill.errors, skill: @skill }
  end
end


# form.erb
<% if errors %>
  <ul>
  <% errors.full_messages.each do |message| %>
    <li><% message %></li>
  <% end %>
  </ul>
<% end %>




<form>

</form>
