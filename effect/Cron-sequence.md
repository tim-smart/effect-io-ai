Package: `effect`<br />
Module: `Cron`<br />

## Cron.sequence

Returns an `IterableIterator` which yields the sequence of `Date`s that match the `Cron` instance.

**Signature**

```ts
declare const sequence: (cron: Cron, startFrom?: DateTime.DateTime.Input) => IterableIterator<Date>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cron.ts#L523)

Since v2.0.0