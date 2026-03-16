Package: `effect`<br />
Module: `HelpDoc`<br />

## HelpDoc.SubcommandGroupDoc

Documentation for a grouped subcommand listing

**Signature**

```ts
export interface SubcommandGroupDoc {
  /**
   * Group name used in help output.
   * Undefined means the default ungrouped section.
   */
  readonly group: string | undefined

  /**
   * Subcommands in this group.
   */
  readonly commands: NonEmptyReadonlyArray<SubcommandDoc>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HelpDoc.ts#L236)

Since v4.0.0