# Inoex cryptocurrency test

This is a code test I wrote for a job post at **Inoex**

### Test requirements

I was intented to implement:

- A script in ruby that sends 0.1 BCY to a specific account address
- Unit tests to cover it
- A Readme describing the execution steps
- Using faucet to send the BCY over BlockCypher's API and a specific given token

## Structure and Tests

This project has a common ruby project folder structure (app/lib) and uses minitest specs for testing (app/spec).

I have used VCR for the remote api testing along with webmock for mocking remote objects and returns.

Turn just light up test results as they get more descriptive and support colors.

### Dependencies

I used Gemfile to handle the dependencies so you just need to `bundle install` them. Here's the list:

- ruby 2.6.3
- blockcypher-ruby
- webmock
- vcr
- turn
- rake
- minitest

### Install dependencies
```
$ bundle install
```

### Run the tests
```
$ bundle exec rake
```

### Run the program on the BlockCypher's Test Chain
Using ruby:
```
$ ruby run.rb
```
Make run.rb *runnable* and then just call it:
```
$ chmod +x run.rb
```
```
$ ./run.rb
```

### Check out the transactions of the account address

You'll have the results output on the terminal.

You can finally check the printed *transaction hash* [here](https://blockcypher.herokuapp.com/bcy/address/C3qXd3YYRBrZZod5D9GLGhpDNnVfAwpbe2/)

### License
This code is free to use and released under the [MIT License](https://opensource.org/licenses/MIT).