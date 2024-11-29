# map

Returns a config whose structure is the same as this one, but which produces
a different value, constructed using the specified function.

To import and use `map` from the "Config" module:

ts
import \* as Config from "effect/Config"
// Can be accessed like this
Config.map
undefined

**Signature**

```ts
export declare const map: {
  <A, B>(f: (a: A) => B): (self: Config<A>) => Config<B>
  <A, B>(self: Config<A>, f: (a: A) => B): Config<B>
}
```
