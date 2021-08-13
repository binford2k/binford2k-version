if ( version::greater('1.0', '0.9')) {
  notice ('1.0 is greater than 0.9')
}

if('1.0'.version::greater('0.9')) {
  notice ('1.0 is greater than 0.9')
}

if(fact('os.release.minor').version::greater(5)) {
  notice ("os release minor (${fact('os.release.minor')}) is greater than 5")
}


if (version::greater('1.0', nil)) { notice('poop')}

if (version::greater(['1.0'], nil)) { notice('poop')}

