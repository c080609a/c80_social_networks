# rake db:seed:c80_social_networks_01_fill_types

C80SocialNetworks::Type.delete_all
C80SocialNetworks::Type.create([
                                   {
                                       id: 1,
                                       title: 'VK',
                                       tag: 'vk',
                                       awesome_icon_code: '\f189'
                                   },
                                   {
                                       id: 2,
                                       title: 'Facebook',
                                       tag: 'fb',
                                       awesome_icon_code: '\f082'
                                   },
                                   {
                                       id: 3,
                                       title: 'Twitter',
                                       tag: 'twitter',
                                       awesome_icon_code: '\f099' #'\f081' - square
                                   },
                                   {
                                       id: 4,
                                       title: 'Instagram',
                                       tag: 'instagram',
                                       awesome_icon_code: '\f16d'
                                   },
                                   {
                                       id: 5,
                                       title: 'Одноклассники',
                                       tag: 'ok',
                                       awesome_icon_code: '\f264'
                                   },
                                   {
                                       id: 6,
                                       title: 'Youtube',
                                       tag: 'youtube',
                                       awesome_icon_code: '\f167'
                                   },
                                   {
                                       id: 7,
                                       title: 'Google plus',
                                       tag: 'gp',
                                       awesome_icon_code: '\f0d4'
                                   },
                                   {
                                       id: 8,
                                       title: 'Whatsapp',
                                       tag: 'whatsapp',
                                       awesome_icon_code: '\f232'
                                   },
                                   {
                                       id: 9,
                                       title: 'Skype',
                                       tag: 'skype',
                                       awesome_icon_code: '\f17e'
                                   },
                                   {
                                       id: 10,
                                       title: 'LinkedIn',
                                       tag: 'linkedin',
                                       awesome_icon_code: '\f0e1'
                                   }
                               ])