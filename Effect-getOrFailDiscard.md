# getOrFailDiscard

Lifts an `Option` into a `IO`, if the option is not defined it fails with
`void`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const getOrFailDiscard: <A>(option: Option.Option<A>) => Effect<never, void, A>
```
