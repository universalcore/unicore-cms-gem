from pyramid.view import view_config
from cms.views import CmsViews


class GemCmsViews(CmsViews):

    def is_sojan_locale(self):
        return self.locale in ['hin_IN', 'tam_IN']
