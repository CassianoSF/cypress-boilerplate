describe "First Test" do
	it 'should increment' do
		cy.visit('http://localhost:8080')
		for i in [0 .. 10]
			cy.get('button.p2g124c > .p2g124c').contains(i)
			cy.get('button.p2g124c').click()
		cy.get('button.p2g124c > .p2g124c').contains(11)

	it 'should reset' do
		cy.get('.reset').click()
		cy.get('button.p2g124c > .p2g124c').contains(0)