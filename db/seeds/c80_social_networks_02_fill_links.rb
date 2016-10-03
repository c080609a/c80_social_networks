# rake db:seed:c80_social_networks_02_fill_links

C80SocialNetworks::Link.delete_all
C80SocialNetworks::Link.create!([
                                    {
                                        id: 1,
                                        title: 'Наша группа Вконтакте',
                                        url: 'http://vk.com'
                                    },
                                    {
                                        id: 2,
                                        title: 'Мы в инстаграм',
                                        url: 'http://instagram.com'
                                    },
                                    {
                                        id: 3,
                                        title: 'Facebook',
                                        url: 'http://facebook.com'
                                    },
                                ])

C80SocialNetworks::Link::HABTM_Types.delete_all
C80SocialNetworks::Link::HABTM_Types.create!([
                                                 { link_id: 1, type_id: 1 },
                                                 { link_id: 2, type_id: 4 },
                                                 { link_id: 3, type_id: 2 }
                                             ])