Package: `effect`<br />
Module: `Entity`<br />

## Entity.KeepAliveLatch

Service tag for the latch that coordinates entity keep-alive state.

**Details**

`keepAlive` closes the latch when keep-alive is active and opens it again when
the resource no longer needs to keep the entity alive.

**Signature**

```ts
declare class KeepAliveLatch
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Entity.ts#L776)

Since v4.0.0