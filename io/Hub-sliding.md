# sliding

Creates a bounded hub with the sliding strategy. The hub will add new
messages and drop old messages if the hub is at capacity.

For best performance use capacities that are powers of two.

Part of the `Hub` module, imported from `@effect/io/Hub`.

**Signature**

```ts
export declare const sliding: <A>(requestedCapacity: number) => Effect.Effect<never, never, Hub<A>>
```
