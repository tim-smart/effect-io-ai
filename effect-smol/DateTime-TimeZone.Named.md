Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.TimeZone.Named

Named IANA time zone.

The `id` field contains the resolved time zone identifier, such as
`"Europe/London"` or `"America/New_York"`.

**Signature**

```ts
export interface Named extends Proto {
    readonly _tag: "Named"
    readonly id: string
    /** @internal */
    readonly format: Intl.DateTimeFormat
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L341)

Since v3.6.0