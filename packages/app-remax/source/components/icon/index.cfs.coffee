iconClasses = (iconsObj) =>
  (
    Object.keys iconsObj
  )
  .reduce (r, c) =>

    _c = c.split ''

    postfix = (
      c.match /\d*$/
    )[0] 

    k = [
      'atIcon'
      _c[0].toUpperCase()
      _c[1..].join ''
    ].join ''

    _k = (
      (k.split '').reduce (__r, __c) =>
        [
          __r...
          unless isNaN __c
          then __c = ''
          else __c
        ]
      , []
    ).join ''
    
    {
      r...
      "#{_k}#{
        if postfix isnt ''
        then "-#{postfix}"
        else ''
      }::before":
        content: "\"\\e#{iconsObj[c]}\""
    }
  , {}

export default {

  '.at-icon':

    display: 'inline-block'

    fontFamily: 'iconfont'
    fontStyle: 'normal'
    fontWeight: 400
    fontVariant: 'normal'

    textTransform: 'none'
    textRendering: 'auto'
    lineHeight: 1
    '-webkit-font-smoothing': 'antialiased'
    verticalAlign: 'middle'

    # margin-top: -2px; // Hack  

  (
    iconClasses
      add: 960
      addCircle: 901
      subtract: 962
      subtractCircle: 961
      alignCenter: 902
      alignLeft: 903
      alignRight: 904
      arrowDown: 905
      arrowLeft: 907
      arrowRight: 908
      arrowUp: 909
      bell: '90a'
      blocked: '90b'
      bookmark: '90c'
      bulletList: '90d'
      calendar: '90e'
      camera: '90f'
      checkCircle: 910
      chevronDown: 911
      chevronLeft: 912
      chevronRight: 913
      chevronUp: 914
      clock: 915
      closeCircle: 916
      close: 917
      creditCard: 918
      downloadCloud: 919
      download: '91a'
      edit: '91b'
      equalizer: '91c'
      externalLink: '91d'
      eye: '91e'
      fileAudio: '91f'
      fileCode: 920
      fileGeneric: 921
      fileJpg: 923
      fileNew: 924
      filePng: 925
      fileSvg: 926
      fileVideo: 927
      filter: 928
      folder: 929
      fontColor: '92a'
      heart: '92b'
      help: '92c'
      home: '92d'
      image: '92e'
      iphoneX: '92f'
      iphone: 930
      lightningBolt: 931
      link: 932
      list: 933
      lock: 934
      mail: 935
      mapPin: 936
      menu: 937
      message: 938
      money: 939
      next: '93a'
      numberedList: '93b'
      pause: '93c'
      phone: '93d'
      play: '93e'
      playlist: '93f'
      prev: 940
      reload: 941
      repeatPlay: 942
      search: 943
      settings: 944
      share2: 945
      share: 946
      shoppingBag2: 947
      shoppingBag: 948
      shoppingCart: 949
      shufflePlay: '94a'
      sketch: '94b'
      sound: '94c'
      star: '94d'
      stop: '94e'
      streaming: '94f'
      tag: 950
      tags: 951
      textItalic: 952
      textStrikethrough: 953
      textUnderline: 954
      trash: 955
      upload: 956
      user: 957
      video: 958
      volumeMinus: 959
      volumeOff: '95a'
      volumePlus: '95b'
      analytics: '95c'
      star2: '95d'
      check: '95e'
      heart2: '95f'
      loading: 967
      loading2: 966
      loading3: 963
      alertCircle: 964
  )...

}
