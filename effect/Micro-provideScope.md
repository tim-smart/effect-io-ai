Package: `effect`<br />
Module: `Micro`<br />

## Micro.provideScope

Provide a `MicroScope` to an effect.

**Signature**

```ts
declare const provideScope: { (scope: MicroScope): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, Exclude<R, MicroScope>>; <A, E, R>(self: Micro<A, E, R>, scope: MicroScope): Micro<A, E, Exclude<R, MicroScope>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3410)

Since v3.4.0