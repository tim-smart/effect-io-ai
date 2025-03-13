Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.makeZonedFromString

Create a `DateTime.Zoned` from a string.

It uses the format: `YYYY-MM-DDTHH:mm:ss.sss+HH:MM[Time/Zone]`.

**Signature**

```ts
declare const makeZonedFromString: (input: string) => Option.Option<Zoned>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/DateTime.ts#L410)

Since v3.6.0