local status, mason = pcall(require, 'mason')
if (not status) then return end

local status, masonlspconf = pcall(require, 'mason-lspconfig')
if (not status) then return end


mason.setup()
masonlspconf.setup{
    ensure_installed = { 'sumneko_lua', 'clangd', 'arduino_language_server',
                         'cssls', 'html', 'jsonls', 'ltex', 'marksman',
                         'pylsp', 'sqlls', 'rust_analyzer', 'taplo', 'yamlls' },
}
