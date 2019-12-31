export default ({
  cfs: {
    px
    per: p
  }
}) =>
  iconList:
    display: 'flex'
    justfyContent: 'flex-start'
    alignItems: 'flex-start'
    flexWrap: 'wrap'
  
    '&__item':
      marginBottom: px 60
      width: p 33
      textAlign: 'center'
    
    '&__name':
      marginTop: px 20
      color: '#88889C'
      fontSize: px 20
      textAlign: 'center'