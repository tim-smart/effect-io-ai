Package: `effect`<br />
Module: `Micro`<br />

## Micro.scoped

Provide a `MicroScope` to the given effect, closing it after the effect has
finished executing.

**Signature**

```ts
declare const scoped: <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, Exclude<R, MicroScope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3427)

Since v3.4.0