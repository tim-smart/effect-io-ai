# zip

Returns a config that is the composition of this config and the specified
config.

To import and use `zip` from the "Config" module:

```ts
import * as Config from "effect/Config"
// Can be accessed like this
Config.zip
```

**Signature**

```ts
export declare const zip: {
  <B>(that: Config<B>): <A>(self: Config<A>) => Config<[A, B]>
  <A, B>(self: Config<A>, that: Config<B>): Config<[A, B]>
}
```
