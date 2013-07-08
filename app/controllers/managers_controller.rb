class ManagersController < ApplicationController

def index
	  sql = "select * from employees e1
    	      where (select count(*) from employees e2
    	              where e1.id = e2.manager_id) > 0"
    @employees = Employee.paginate_by_sql(sql,:per_page => 5, :page => params[:page])

end

def show
end

end