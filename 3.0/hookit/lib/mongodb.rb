
module Hooky
  module Mongodb

    BOXFILE_DEFAULTS = {
      # global settings
      before_deploy:                       {type: :array, of: :string, default: []},
      after_deploy:                        {type: :array, of: :string, default: []},

      # mongodb settings
      objcheck:                    {type: :on_off, default: true},
      log_verbosity:               {type: :string, default: '', from: ['', 'v', 'vv', 'vvv', 'vvvv', 'vvvvv']},
      directoryperdb:              {type: :on_off, default: true},
      logappend:                   {type: :on_off, default: true},
      nojournal:                   {type: :on_off, default: false},
      noscripting:                 {type: :on_off, default: false}
    }

  end
end
