Package: `effect`<br />
Module: `Worker`<br />

## Worker.Spawner

Phantom identifier for the service that maps worker ids to platform-specific
worker instances.

**Signature**

```ts
export interface Spawner {
  readonly _: unique symbol
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Worker.ts#L101)

Since v4.0.0