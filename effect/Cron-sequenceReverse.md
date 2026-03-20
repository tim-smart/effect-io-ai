Package: `effect`<br />
Module: `Cron`<br />

## Cron.sequenceReverse

Returns an `IterableIterator` which yields the sequence of `Date`s that match the `Cron` instance,
in reverse direction.

**Signature**

```ts
declare const sequenceReverse: (cron: Cron, startFrom?: DateTime.DateTime.Input) => IterableIterator<Date>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L653)

Since v3.20.0