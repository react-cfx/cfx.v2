export default

  web:
    plugins: [
      [
        'build-plugin-rax-app'
        targets: [
          'web'
        ]
      ]
    ]

  weex:
    plugins: [
      [
        'rax-plugin-app'
        targets: [
          'weex'
        ]
      ]
    ]
