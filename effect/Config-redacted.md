# redacted

Constructs a config for a redacted value.

To import and use `redacted` from the "Config" module:

```ts
import * as Config from "effect/Config"
// Can be accessed like this
Config.redacted
```

**Signature**

```ts
export declare const redacted: {
  (name?: string): Config<Redacted.Redacted>
  <A>(config: Config<A>): Config<Redacted.Redacted<A>>
}
```
