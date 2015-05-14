module LoanPage
  def goto_ourbank
    #todo
    visit Ourbank
  end
  def submit_new_loan_application
    on(Ourbank).loan_application
    on(Ourbank).new_loan

    on(NewLoanPage) do |page|
      name = 'Robert Card'
      address = '1234 Test Street'
      loan_amount = 1000000

      page.name = name
      page.address = address
      page.loan_amount = loan_amount
      page.submit

    end

    on(NewLoanPage).confirmation_msg

  end
def submit_0_loan_amount_application
  on(Ourbank).loan_application
  on(Ourbank).new_loan

  on(NewLoanPage) do |page|
    name = 'Robert Card'
    address = '1234 Test Street'
    loan_amount = 0

    page.name = name
    page.address = address
    page.loan_amount = loan_amount
    page.submit

  end
  on(NewLoanPage).error_msg
  end

def submit_blank_name_application
  on(Ourbank).loan_application
  on(Ourbank).new_loan

  on(NewLoanPage) do |page|
    name = ''
    address = '1234 Test Street'
    loan_amount = 100000

    page.name = name
    page.address = address
    page.loan_amount = loan_amount
    page.submit

  end
  on(NewLoanPage).error_msg
end

def submit_blank_address_application
    on(Ourbank).loan_application
    on(Ourbank).new_loan

    on(NewLoanPage) do |page|
      name = 'Robert Card'
      address = ''
      loan_amount = 100000

      page.name = name
      page.address = address
      page.loan_amount = loan_amount
      page.submit

    end
    on(NewLoanPage).error_msg

end

  def submit_max_loan_amount_application
    on(Ourbank).loan_application
    on(Ourbank).new_loan

    on(NewLoanPage) do |page|
      name = 'Robert Card'
      address = '1234 Test Street'
      loan_amount = 1000001

      page.name = name
      page.address = address
      page.loan_amount = loan_amount
      page.submit

    end
    on(NewLoanPage).error_msg

  end


end

World(LoanPage)