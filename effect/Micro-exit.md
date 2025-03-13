Package: `effect`<br />
Module: `Micro`<br />

## Micro.exit

Access the `MicroExit` of the given `Micro` effect.

**Signature**

```ts
declare const exit: <A, E, R>(self: Micro<A, E, R>) => Micro<MicroExit<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1386)

Since v3.4.6