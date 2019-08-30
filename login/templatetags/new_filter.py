from django import template
from ..forms import *
register = template.Library()

@register.filter(is_safe=True)
def showRole(value): # Only one argument.
    return role[value]