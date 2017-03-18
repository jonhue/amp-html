# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf


# AMP-HTML - Setting the format for AMP-HTML Views
Mime::Type.register_alias 'text/html', Amphtml.format
