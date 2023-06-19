# noneOrFailWith

Lifts an `Option` into a `Effect`. If the option is empty it succeeds with
`undefined`. If the option is defined it fails with an error computed by
the specified function.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const noneOrFailWith: <E, A>(option: Option.Option<A>, f: (a: A) => E) => Effect<never, E, void>
```
