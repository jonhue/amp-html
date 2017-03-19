
# AMP-HTML Components


## All Components

All currently supported components for AMP-HTML. New are added continuously.

### Built-in

* [Schema.org](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/schema.md)
* [Fonts BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/fonts.md)

### Installable

* [Advertisements BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/ad.md)
* [Analytics BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/analytics.md)
* [Animated Images BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/anim.md)
* [Iframe BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/iframe.md)
* [Notifications BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/notifications.md)
* [Social BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/social.md)
* [Javascript BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/javascript.md)


## Installing Components

AMP-HTML makes it easy to add new feature-sets with components without bloating your app right from the beginning.

You can install any component by running:

    amphtml install NAME

So running `amphtml install analytics` will install the AMP-HTML Analytics component.

You can view all currently installed components in your AMP-HTML configuration file (`config/amphtml.yml`).

After editing the list of components in your configuration run:

    amphtml bundle

to install all added and uninstall all removed components.

**Now you are ready to use your added components.**
To learn more about the features of a specific component, take a look at their dedicated references.

To update your configuration file after new components got added to AMP-HTML run:

    rails g amphtml:install


## About Components

AMP-HTML components are an easy way to use AMP and Rails to build slim, performant and powerful applications. They allow to add the exact superpower or feature your app needs. You stay in control of what features your app uses and which not.

### What features are components?

The vanilla version of AMP-HTML comes just with everything you need to get you and your app started with AMP. To really profit from all the features that AMP-HTML provides, you need to install components. Some components like "Iframe" or "Animated Images" are considerably smaller than others like "Authentication" and "Notifications". You decide which components your app needs.

### DeepIntegration Components

DeepIntegration components are usually larger, more complex components, that integrate more deeply into your app. They often provide options to get configured in your AMP-HTML configuration file (`config/amphtml.yml`) and / or they require to be setup in your view. You can learn more about whether a certain component has DeepIntegration or not by looking at their dedicated references.


## New Components

Take a look at the newest additions of components to AMP-HTML.

* [Javascript BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/javascript.md)
* [Notifications BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/notifications.md)
* [Social BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/social.md)


## Components in BETA

Take a look at the newest additions of components to AMP-HTML.

* [Fonts BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/fonts.md)
* [Advertisements BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/ad.md)
* [Analytics BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/analytics.md)
* [Animated Images BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/anim.md)
* [Iframe BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/iframe.md)
* [Notifications BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/notifications.md)
* [Social BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/social.md)
* [Javascript BETA](https://github.com/jonhue/amphtml/blob/master/lib/amphtml/components/docs/javascript.md)
