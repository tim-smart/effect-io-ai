## updateWith

A variant of `update` that allows specifying the function that will be used
to combine old values with new values.

**Signature**

```ts
declare const updateWith: <A>(f: (x: A, y: A) => A) => Differ<A, (a: A) => A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Differ.ts#L428)

Since v2.0.0