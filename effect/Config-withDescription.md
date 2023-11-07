# withDescription

Adds a description to this configuration, which is intended for humans.

To import and use `withDescription` from the "Config" module:

```ts
import * as Config from 'effect/Config'

// Can be accessed like this
Config.withDescription
```

**Signature**

```ts
export declare const withDescription: {
  (description: string): <A>(self: Config<A>) => Config<A>
  <A>(self: Config<A>, description: string): Config<A>
}
```
