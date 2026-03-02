Package: `effect`<br />
Module: `Atom`<br />

## Atom.withReactivity

An alias to `Rx.runtime.withReactivity`, for refreshing an atom whenever the
keys change in the `Reactivity` service.

**Signature**

```ts
declare const withReactivity: (keys: ReadonlyArray<unknown> | ReadonlyRecord<string, ReadonlyArray<unknown>>) => <A extends Atom<any>>(atom: A) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L742)

Since v4.0.0