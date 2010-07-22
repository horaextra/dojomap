ENV['SKIP_TASKS'] = %w( 
    db:migrate
    test:units
    test:functionals
    test:integration
    test:rcov:units
    test:rcov:units:verify
    test:rcov:functionals
    test:rcov:functionals:verify
    test:plugins:selected
    spec:plugins:selected
    test:selenium:server:start
    test_acceptance
    test:selenium:server:stop
).join(',')

ENV['SCM'] = 'git'

