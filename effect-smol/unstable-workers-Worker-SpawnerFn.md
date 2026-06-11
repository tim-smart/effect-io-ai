Package: `effect`<br />
Module: `Worker`<br />

## Worker.SpawnerFn

Function that creates or locates a platform-specific worker instance for a
numeric worker id.

**Signature**

```ts
export interface SpawnerFn<W = unknown> {
  (id: number): W
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Worker.ts#L123)

Since v4.0.0