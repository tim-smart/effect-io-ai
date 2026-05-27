Package: `effect`<br />
Module: `DurableClock`<br />

## DurableClock.make

Creates a durable clock definition and its associated deferred wake-up
signal.

**Signature**

```ts
declare const make: (options: { readonly name: string; readonly duration: Duration.Input; }) => DurableClock
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DurableClock.ts#L61)

Since v4.0.0