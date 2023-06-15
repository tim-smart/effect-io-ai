# manual

Creates a new `Resource` value that must be manually refreshed by calling
the refresh method. Note that error retrying is not performed
automatically, so if you want to retry on errors, you should first apply
retry policies to the acquisition effect before passing it to this
constructor.

Part of the `Resource` module from the `@effect/io` package. Also known as `Resource.manual`.
