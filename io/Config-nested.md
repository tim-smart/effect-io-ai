# nested

Returns a config that has this configuration nested as a property of the
specified name.

To import and use `nested` from the "Config" module:

```ts
import * as Config from '@effect/io/Config'

// Can be accessed like this
Config.nested
```

**Signature**

```ts
export declare const nested: {
  (name: string): <A>(self: Config<A>) => Config<A>
  <A>(self: Config<A>, name: string): Config<A>
}
```
