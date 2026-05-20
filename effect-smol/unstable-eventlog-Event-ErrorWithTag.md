Package: `effect`<br />
Module: `Event`<br />

## Event.ErrorWithTag

Decoded error value type for the event in a union with the specified tag.

**Signature**

```ts
type ErrorWithTag<Events, Tag> = Error<WithTag<Events, Tag>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Event.ts#L369)

Since v4.0.0