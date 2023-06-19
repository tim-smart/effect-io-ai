# updateWith

A variant of `update` that allows specifying the function that will be used
to combine old values with new values.

Part of the `Differ` module, imported from `@effect/data/Differ`.

**Signature**

```ts
export declare const updateWith: <A>(f: (x: A, y: A) => A) => Differ<A, (a: A) => A>
```
