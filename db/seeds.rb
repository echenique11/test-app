super_admin_role = Role.create(title: 'Super Admin', route: 'admin',controller: 'UsersController')
super_admin = User.create(first_name: 'Luis', last_name: 'Echenique', phone: '123-123-1234', password: '1234',identification_number:'123456789')
RoleUser.create(user_id:super_admin.id,role_id:super_admin_role.id)
