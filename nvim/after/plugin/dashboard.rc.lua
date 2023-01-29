
local status, dashboard = pcall(require, 'dashboard')
if (not status) then return end

dashboard.custom_header = {
   [[                            ]],
   [[          ░░░░░░░           ]],
   [[     ░░░░░░░░░░░░░░░░░      ]],
   [[   │░░░░░░░░░░░░░░░░░░░│    ]],
   [[   │░░░░░░░░░░░░░░░░░░░│    ]],
   [[  ░└┐░░░░░░░░░░░░░░░░░┌┘░   ]],
   [[  ░░└┐░░░░░░░░░░░░░░░┌┘░░   ]],
   [[  ░░┌┘     ░░░░░     └┐░░   ]],
   [[   ░│       ░░░       │░    ]],
   [[   ░│      ░░ ░░      │░    ]],
   [[   ─┘░░░░░░░   ░░░░░░░└─    ]],
   [[   ░░░   ▓░░   ░░▓   ░░░    ]],
   [[     ─┘   ░░░░░░░   └─      ]],
   [[     ░░  ─┬┬┬┬┬┬┬─  ░░      ]],
   [[     ░░░ ┬┼┼┼┼┼┼┼┬ ░░░      ]],
   [[      ░░░└┴┴┴┴┴┴┴┘░░░       ]],
   [[        ░░░░░░░░░░░         ]],
   [[                            ]],
}
--dashboard.custom_center = {'Under Construction'}
dashboard.custom_footer = {'In Risk We Trust'}
