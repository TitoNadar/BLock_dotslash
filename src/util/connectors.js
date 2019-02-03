import { Connect,SimpleSigner } from 'uport-connect'

//export let uport = new Connect('TruffleBox')

export let uport = new Connect('SVNIT DOTSLASH HACK', {
    clientId: '2ooMTy95t9gCpKmFGMVV4yANdmPuADfDYoK',
    network: 'rinkeby',
    signer: SimpleSigner('0f40a145993b3061c7360ffc176ea3b401593304539f5d132bd6be6abd02723b')
})

export const web3 = uport.getWeb3()
