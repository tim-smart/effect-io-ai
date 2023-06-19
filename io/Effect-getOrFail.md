# getOrFail

Lifts an `Option` into an `Effect`, if the option is not defined it fails
with `NoSuchElementException`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const getOrFail: <A>(option: Option.Option<A>) => Effect<never, Cause.NoSuchElementException, A>
```
