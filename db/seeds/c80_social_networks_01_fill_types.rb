# rake db:seed:c80_social_networks_01_fill_types

C80SocialNetworks::Type.delete_all
C80SocialNetworks::Type.create!([
                                   {
                                       id: 1,
                                       title: 'VK',
                                       tag: 'vk',
                                       awesome_icon_code: 'fa-vk'
                                   },
                                   {
                                       id: 2,
                                       title: 'Facebook',
                                       tag: 'fb',
                                       awesome_icon_code: 'fa-facebook-official'
                                   },
                                   {
                                       id: 3,
                                       title: 'Twitter',
                                       tag: 'twitter',
                                       awesome_icon_code: 'fa-twitter'
                                   },
                                   {
                                       id: 4,
                                       title: 'Instagram',
                                       tag: 'instagram',
                                       awesome_icon_code: 'fa-instagram'
                                   },
                                   {
                                       id: 5,
                                       title: 'Одноклассники',
                                       tag: 'ok',
                                       awesome_icon_code: 'fa-odnoklassniki-square'
                                   },
                                   {
                                       id: 6,
                                       title: 'Youtube',
                                       tag: 'youtube',
                                       awesome_icon_code: 'fa-youtube'
                                   },
                                   {
                                       id: 7,
                                       title: 'Google plus',
                                       tag: 'gp',
                                       awesome_icon_code: 'fa-google-plus-square'
                                   },
                                   {
                                       id: 8,
                                       title: 'Whatsapp',
                                       tag: 'whatsapp',
                                       awesome_icon_code: 'fa-whatsapp'
                                   },
                                   {
                                       id: 9,
                                       title: 'Skype',
                                       tag: 'skype',
                                       awesome_icon_code: 'fa-skype'
                                   },
                                   {
                                       id: 10,
                                       title: 'LinkedIn',
                                       tag: 'linkedin',
                                       awesome_icon_code: 'fa-linkedin'
                                   }
                               ])