json.array!(@group_roles) do |group_role|
  json.extract! group_role, :title, :job_description, :reports_to, :supervisor_to
  json.url group_role_url(group_role, format: :json)
end
