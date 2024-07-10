import ProjectDescription

let script: String = """
export PATH="$PATH:/opt/homebrew/bin"
if which swiftlint > /dev/null; then
swiftlint
else
echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
exit 1
fi
"""

let project = Project(
	name: "MdEditor",
	targets: [
		Target(
			name: "MdEditor",
			destinations: .iOS,
			product: .app,
			bundleId: "Rinat.MdEditor",
			infoPlist: .file(path: "Config/mdeditor-info.plist"),
			sources: ["MdEditor/Sources/**"],
			scripts: [
				.pre(script: script, name: "SwiftLint")
			]
		)
	]
)
