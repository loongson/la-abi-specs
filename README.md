# Application Binary Interface for the LoongArch™ Architecture

This is the official documentation of the Application Binary Interface
for the LoongArch™ Architecture.

## Releases

The latest ABI documentation releases are available at
https://github.com/loongson/la-abi-specs and are licensed under the Creative
Commons Attribution-NonCommercial-NoDerivatives 4.0 International
(CC BY-NC-ND 4.0) License.

## Defect reports

Please report defects in or enhancements to the specifications in this folder to
the [issue tracker page on GitHub](https://github.com/loongson/la-abi-specs/issues).

## List of documents

specification                                            | latest
---                                                      | ---
Procedure Call Standard for the LoongArch™ Architecture  | [lapcs](lapcs.adoc)
ELF for the LoongArch™ Architecture                      | [laelf](laelf.adoc)
DWARF for the LoongArch™ Architecture                    | [ladwarf](ladwarf.adoc)

## Contributing

Please refer to the contribution guidelines in [CONTRIBUTING](CONTRIBUTING.md).

## License

The ABI documents and their source files are currently licensed under the
Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International
(CC BY-NC-ND 4.0) License. Contributions to these files are accepted under
the same license.

To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/
or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

## Revision History

Legacy versions of the documents were released at the Github repository
[LoongArch-Documentation](https://github.com/loongson/LoongArch-Documentation).
These include version 1.00, 2.00 and 2.01.

All changes to the documents in a subsequent release should be declared in their
change history section respectively. Timestamps in the form `YYYYMMDD` should be used
for versioning of the individual documents in this folder, and a global version
number which correspond to a combination of individual document versions will still
be assigned to every new release of this collection.

This global version number will continue to follow the legacy versioning scheme,
where a change of the major version (currently 1 and 2) could potentially degrade
binary compatibility between objects conforming to these specifications, while a
change to the two-digit minor version signifies other bugfixes and improvements.

Please note that we do not expect the major version to change at any time in the
forseeable future, and the minor version may increase by more than 1 in a new public
release for project management purposes.

- **v1.00**

    * Add register usage convention, data type conventions and the list of ELF relocation types.

- **v2.00**

    * Add description of ILP32 data model.
    * Add description of return value register aliases.
    * Add relocation types with direct immediate-filling semantics.
    * Add ABI version porting guidelines for toolchain implementations.
    * Add link to SysV gABI documentation.
    * Adjust asciidoc code style.

- **v2.01**

    * Adjust description of ABI type encoding scheme.
    * Add header for all tables.

- **v2.10**

    * Split the original psABI documentation (v2.01) into the `lapcs` and `laelf` documents.
    * Add the *DWARF standard for the LoongArch™ architecture* (`ladwarf`) document.
    * Differentiate machine data types with the C/C++ types.
    * Clarify parameter passing rules for small `struct`s that contain both floating-point and integer members.
    * Clarify parameter passing rules for `struct`s that contain zero-length arrays or bitfields.

- **v2.20**

    * Revise the parameter passing rules of structures.
    * Add R_LARCH_CALL36 relocation type.
    * Remove R_LARCH_DELETE and mark its relocation number as reserved.
    * Remove R_LARCH_CFA and mark its relocation number as reserved.
    * Fix ULEB128 relocation name (R_LARCH_SUB_ULEB128).


## I18n

This specification is written in both English and Chinese. In the event of any
inconsistency between the same document version in two languages, the Chinese
version shall prevail.
