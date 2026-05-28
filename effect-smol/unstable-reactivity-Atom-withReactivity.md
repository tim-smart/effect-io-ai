Package: `effect`<br />
Module: `Atom`<br />

## Atom.withReactivity

Returns `Rx.runtime.withReactivity` for refreshing an atom whenever the
keys change in the `Reactivity` service.

**When to use**

Use to refresh an atom whenever one or more invalidation keys change in the
default reactivity runtime.

**Signature**

```ts
declare const withReactivity: (keys: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>>) => <A extends Atom<any>>(atom: A) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L835)

Since v4.0.0