<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="6250" systemVersion="14C1514" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" initialViewController="aUB-cj-Vll">
    <dependencies>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="6244"/>
    </dependencies>
    <scenes>
        <!--View Controller-->
        <scene sceneID="tne-QT-ifu">
            <objects>
                <viewController id="BYZ-38-t0r" customClass="ViewController" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="y3c-jy-aDJ"/>
                        <viewControllerLayoutGuide type="bottom" id="wfy-db-euE"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="8bC-Xf-vdC">
                        <rect key="frame" x="0.0" y="0.0" width="600" height="600"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <tableView clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="44" sectionHeaderHeight="22" sectionFooterHeight="22" translatesAutoresizingMaskIntoConstraints="NO" id="KVU-9g-dG6">
                                <rect key="frame" x="0.0" y="0.0" width="600" height="600"/>
                                <color key="backgroundColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                            </tableView>
                        </subviews>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="custom" customColorSpace="calibratedWhite"/>
                        <variation key="default">
                            <mask key="subviews">
                                <exclude reference="KVU-9g-dG6"/>
                            </mask>
                        </variation>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="dkx-z0-nzr" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="1170" y="293"/>
        </scene>
        <!--Select Sport-->
        <scene sceneID="9Kl-oB-P1Q">
            <objects>
                <tableViewController id="82e-Ry-spY" customClass="SportTableController" sceneMemberID="viewController">
                    <tableView key="view" clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="grouped" separatorStyle="default" rowHeight="44" sectionHeaderHeight="10" sectionFooterHeight="10" id="qpq-uj-BHp">
                        <rect key="frame" x="0.0" y="0.0" width="600" height="600"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <color key="backgroundColor" cocoaTouchSystemColor="groupTableViewBackgroundColor"/>
                        <prototypes>
                            <tableViewCell contentMode="scaleToFill" selectionStyle="blue" accessoryType="disclosureIndicator" hidesAccessoryWhenEditing="NO" indentationLevel="1" indentationWidth="0.0" reuseIdentifier="Sport" id="5A9-YS-Znx">
                                <autoresizingMask key="autoresizingMask"/>
                                <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" tableViewCell="5A9-YS-Znx" id="7e2-xE-YCI">
                                    <autoresizingMask key="autoresizingMask"/>
                                </tableViewCellContentView>
                                <connections>
                                    <segue destination="MkK-Q9-uuK" kind="show" identifier="GameTable" id="cJ7-rr-JKe"/>
                                </connections>
                            </tableViewCell>
                        </prototypes>
                        <sections/>
                        <connections>
                            <outlet property="dataSource" destination="82e-Ry-spY" id="o53-Wa-51e"/>
                            <outlet property="delegate" destination="82e-Ry-spY" id="TaR-SQ-ARB"/>
                        </connections>
                    </tableView>
                    <navigationItem key="navigationItem" title="Select Sport" prompt="Sport Report Evaluation" id="ssx-FI-JfR"/>
                </tableViewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="Hc2-Uq-x3W" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="890" y="971"/>
        </scene>
        <!--Game list-->
        <scene sceneID="cAU-JT-ijJ">
            <objects>
                <tableViewController id="MkK-Q9-uuK" customClass="GameListController" sceneMemberID="viewController">
                    <tableView key="view" clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="44" sectionHeaderHeight="22" sectionFooterHeight="22" id="QaL-cq-E2i">
                        <rect key="frame" x="0.0" y="0.0" width="600" height="600"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                        <prototypes>
                            <tableViewCell contentMode="scaleToFill" selectionStyle="default" indentationWidth="10" id="5aR-Eg-OaH">
                                <autoresizingMask key="autoresizingMask"/>
                                <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" tableViewCell="5aR-Eg-OaH" id="Jh2-LC-LRW">
                                    <autoresizingMask key="autoresizingMask"/>
                                </tableViewCellContentView>
                            </tableViewCell>
                        </prototypes>
                        <sections/>
                        <connections>
                            <outlet property="dataSource" destination="MkK-Q9-uuK" id="nT2-xH-cwH"/>
                            <outlet property="delegate" destination="MkK-Q9-uuK" id="fs1-y3-Amd"/>
                        </connections>
                    </tableView>
                    <navigationItem key="navigationItem" title="Game list" prompt="Sport Report Evaluation" id="6Yw-zv-FmY">
                        <barButtonItem key="backBarButtonItem" title="back" id="I4I-DN-y94"/>
                        <barButtonItem key="leftBarButtonItem" title="Back" id="t6p-R9-aJ6">
                            <connections>
                                <segue destination="aUB-cj-Vll" kind="showDetail" id="je5-8A-Cg8"/>
                            </connections>
                        </barButtonItem>
                    </navigationItem>
                </tableViewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="LOL-Yh-2hj" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="864" y="1798"/>
        </scene>
        <!--View Controller-->
        <scene sceneID="a57-tR-1Zf">
            <objects>
                <viewController id="lTP-Jq-tfH" sceneMemberID="viewController">
                    <layoutGuides>
                        <viewControllerLayoutGuide type="top" id="IxY-Uh-f9x"/>
                        <viewControllerLayoutGuide type="bottom" id="RbU-d4-3tX"/>
                    </layoutGuides>
                    <view key="view" contentMode="scaleToFill" id="bQu-4H-OAt">
                        <rect key="frame" x="0.0" y="0.0" width="600" height="600"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="calibratedWhite"/>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="8EH-UV-asd" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="1472" y="1814"/>
        </scene>
        <!--Navigation Controller-->
        <scene sceneID="uY5-12-0CD">
            <objects>
                <navigationController automaticallyAdjustsScrollViewInsets="NO" id="aUB-cj-Vll" sceneMemberID="viewController">
                    <toolbarItems/>
                    <navigationBar key="navigationBar" contentMode="scaleToFill" id="o30-Na-cGe">
                        <rect key="frame" x="0.0" y="0.0" width="320" height="44"/>
                        <autoresizingMask key="autoresizingMask"/>
                    </navigationBar>
                    <nil name="viewControllers"/>
                    <connections>
                        <segue destination="82e-Ry-spY" kind="relationship" relationship="rootViewController" id="NY9-2K-duE"/>
                    </connections>
                </navigationController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="pIt-TT-IBx" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="206" y="938"/>
        </scene>
        <!--Navigation Match List-->
        <scene sceneID="cyx-rD-fNe">
            <objects>
                <navigationController automaticallyAdjustsScrollViewInsets="NO" id="eKF-es-sYm" customClass="NavigationMatchList" sceneMemberID="viewController">
                    <toolbarItems/>
                    <navigationItem key="navigationItem" id="ou0-ef-dIA"/>
                    <navigationBar key="navigationBar" contentMode="scaleToFill" id="w2x-s9-mu6">
                        <rect key="frame" x="0.0" y="0.0" width="320" height="44"/>
                        <autoresizingMask key="autoresizingMask"/>
                    </navigationBar>
                    <nil name="viewControllers"/>
                    <connections>
                        <segue destination="MkK-Q9-uuK" kind="relationship" relationship="rootViewController" id="GxO-zp-nLZ"/>
                    </connections>
                </navigationController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="tlA-AY-gq3" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="206" y="1641"/>
        </scene>
    </scenes>
    <inferredMetricsTieBreakers>
        <segue reference="cJ7-rr-JKe"/>
    </inferredMetricsTieBreakers>
</document>
