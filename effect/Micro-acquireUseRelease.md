Package: `effect`<br />
Module: `Micro`<br />

## Micro.acquireUseRelease

Acquire a resource, use it, and then release the resource when the `use`
effect has completed.

**Signature**

```ts
declare const acquireUseRelease: <Resource, E, R, A, E2, R2, E3, R3>(acquire: Micro<Resource, E, R>, use: (a: Resource) => Micro<A, E2, R2>, release: (a: Resource, exit: MicroExit<A, E2>) => Micro<void, E3, R3>) => Micro<A, E | E2 | E3, R | R2 | R3>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L3600)

Since v3.4.0