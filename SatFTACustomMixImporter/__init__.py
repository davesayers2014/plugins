import gettext

from Components.Language import language
from Tools.Directories import resolveFilename, SCOPE_PLUGINS


PluginLanguageDomain = "SatFTAcustommiximporter"
PluginLanguagePath = "SystemPlugins/SatFTACustomMixImporter/locale"

def pluginlanguagedomain():
	return PluginLanguageDomain

def localeInit():
	gettext.bindtextdomain(PluginLanguageDomain, resolveFilename(SCOPE_PLUGINS, PluginLanguagePath))

def _(txt):
	if gettext.dgettext(PluginLanguageDomain, txt):
		return gettext.dgettext(PluginLanguageDomain, txt)
	else:
		print "[" + PluginLanguageDomain + "] fallback to default translation for " + txt
		return gettext.gettext(txt)


language.addCallback(localeInit())
