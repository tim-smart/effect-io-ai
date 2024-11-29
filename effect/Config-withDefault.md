# withDefault

Returns a config that describes the same structure as this one, but has the
specified default value in case the information cannot be found.

To import and use `withDefault` from the "Config" module:

ts
import \* as Config from "effect/Config"
// Can be accessed like this
Config.withDefault
undefined

**Signature**

```ts
export declare const withDefault: {
  <const A2>(def: A2): <A>(self: Config<A>) => Config<A2 | A>
  <A, const A2>(self: Config<A>, def: A2): Config<A | A2>
}
```
