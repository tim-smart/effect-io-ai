Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.date

Creates a date prompt that lets the user edit a formatted date value and
validates the final `Date` before submission.

**Details**

`initial` defaults to the current `Date`, `dateMask` defaults to
`YYYY-MM-DD HH:mm:ss`, mask parsing creates editable date parts plus literal
tokens, `locales` customizes month and weekday labels, and `validate` runs on
submission.

**Gotchas**

A supplied `initial` `Date` is edited in place during prompt interaction.
Date edits use JavaScript `Date` setters, so out-of-range typed values can
normalize before validation. If the prompt is meant to be editable,
`dateMask` should contain at least one editable date token.

**Signature**

```ts
declare const date: (options: DateOptions) => Prompt<Date>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L825)

Since v4.0.0